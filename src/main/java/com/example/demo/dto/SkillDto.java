package com.example.demo.dto;

/**
 * Created by ashish on 13/5/17.
 */
public class SkillDto {
    Integer skillId;
    String SkillName;

    public SkillDto(Integer skillId, String skillName) {
        this.skillId = skillId;
        SkillName = skillName;
    }

    public SkillDto() {
    }

    public Integer getSkillId() {
        return skillId;
    }

    public void setSkillId(Integer skillId) {
        this.skillId = skillId;
    }

    public String getSkillName() {
        return SkillName;
    }

    public void setSkillName(String skillName) {
        SkillName = skillName;
    }
}
