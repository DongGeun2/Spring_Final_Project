package com.cyco.alarm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.cyco.alarm.service.AlarmService;
import com.cyco.alarm.vo.AlarmVo;
import com.cyco.alarm.vo.FromNoteVo;
import com.cyco.alarm.vo.ToNoteVo;
import com.cyco.member.service.MemberService;
import com.fasterxml.jackson.databind.ObjectMapper;

@RestController
@RequestMapping(value="/alarm/")
public class AlarmRestController {
	
	@Autowired
	AlarmService alarmservice;
	
	@Autowired
	MemberService memberservice;
	
	//페이지 이동할 때마다 알림 종모양 체크해서 유지하기
	@RequestMapping(value="checkbell", method= RequestMethod.POST)
	public Boolean checkbell(String id) {
		System.out.println(id);
		Boolean bo = false;
		int row = memberservice.getOldAlarm(id);
		if(row > 0) {
			bo = true;
		}
		return bo;
		
	}
	
	//알림 오면/페이지 이동시 리스트 업데이트
	@RequestMapping(value="updatealarmlist", method= {RequestMethod.GET, RequestMethod.POST})
	public List<AlarmVo> updateAlarm(String id) {
		
		List<AlarmVo> list = alarmservice.getNewAlarms(id);
	
		return list;
	}
	
	//쪽지 전송시 디비에 반영하기
	@RequestMapping(value="insertnote", method= {RequestMethod.GET, RequestMethod.POST})
	public Boolean insertNote(@RequestBody Map<String, Object> data) {

		System.out.println("This is insertNote");
		System.out.println("data : " + data.toString());
		
		ObjectMapper objectMapper = new ObjectMapper();
		
		AlarmVo alarm= objectMapper.convertValue(data.get("alarm"), AlarmVo.class);
		FromNoteVo frn = objectMapper.convertValue(data.get("note"), FromNoteVo.class);
		ToNoteVo tn = objectMapper.convertValue(data.get("note"), ToNoteVo.class);
		
		 Boolean bo = alarmservice.insertNote(alarm, frn, tn);
		 

		return bo;
	}
	
	//알림 확인한 것 디비에 상태 반영
	@RequestMapping(value="checkalarm", method= {RequestMethod.GET, RequestMethod.POST})
	public String chekcAlarm(String alarm_id) {
		System.out.println("상태 변경 :"+alarm_id);
		String bo = "false";
		int row = alarmservice.checkAlarm(alarm_id);
		
		if(row > 0) {
			bo = "true";
		}
		
		return bo;
	}
	
	//알림 삭제 디비 반영
	@RequestMapping(value="deletealarm", method= {RequestMethod.GET, RequestMethod.POST})
	public Boolean deleteAlarm(String alarm_id) {
		System.out.println("삭제 : " + alarm_id);
		Boolean bo = false;
		int row = alarmservice.deleteAlarm(alarm_id);
		
		if(row > 0) {
			bo = true;
		}
		
		return bo;
	}
	
	//쪽지 읽은 상태 디비 반영
	@RequestMapping(value="updatenoteok", method={RequestMethod.GET, RequestMethod.POST})
	public Boolean updateNoteOk(String noteid) {
		System.out.println("쪽지 번호 : " + noteid);
		
		return alarmservice.updateNoteOk(noteid);
	}
	
	
}
