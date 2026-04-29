(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5765622487134558493693248237832449376583099365234375p965 {+ 2596605528461815 965 (4.91651e+290)}
; 1.5765622487134558493693248237832449376583099365234375p965 | == 1.5765622487134558493693248237832449376583099365234375p965
; [HW: 1.5765622487134558493693248237832449376583099365234375p965] 

; mpf : + 2596605528461815 965
; mpfd: + 2596605528461815 965 (4.91651e+290) class: Pos. norm. non-zero
; hwf : + 2596605528461815 965 (4.91651e+290) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111000100 #b1001001110011001100101010110001001010101000111110111)))
(assert (= r (fp #b0 #b11111000100 #b1001001110011001100101010110001001010101000111110111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
