package com.zcup.action;

import java.io.IOException;

import javax.annotation.Resource;

import com.zcup.model.Note;
import com.zcup.service.NoteService;
public class NoteAction extends HttpBaseAction {

	@Resource
	private NoteService noteService;
	
	private Note note;
	
	private Integer poiId;
	
	public Integer getPoiId() {
		return poiId;
	}

	public void setPoiId(Integer poiId) {
		this.poiId = poiId;
	}

	public NoteService getNoteService() {
		return noteService;
	}

	public void setNoteService(NoteService noteService) {
		this.noteService = noteService;
	}

	public Note getNote() {
		return note;
	}

	public void setNote(Note note) {
		this.note = note;
	}
	

	/**
	 * ajax添加Note
	 * @throws IOException 
	 */
	public void ajax_addNote() throws IOException {
		noteService.saveNote(note, poiId);
		response.getWriter().write("success");
	}
	
}
