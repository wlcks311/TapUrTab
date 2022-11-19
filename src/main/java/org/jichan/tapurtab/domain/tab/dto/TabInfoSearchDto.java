package org.jichan.tapurtab.domain.tab.dto;

import lombok.*;

@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
@Getter
@Setter
public class TabInfoSearchDto {
    private String searchType;
    private String givenWord;
}
