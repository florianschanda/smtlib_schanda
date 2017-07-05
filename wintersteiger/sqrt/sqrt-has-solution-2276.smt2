(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2177741872628551345059122468228451907634735107421875p75 {+ 980767748607907 75 (4.60062e+022)}
; 1.2177741872628551345059122468228451907634735107421875p75 S == 1.560624354072981390118002309463918209075927734375p37
; [HW: 1.560624354072981390118002309463918209075927734375p37] 

; mpf : + 2524827632097904 37
; mpfd: + 2524827632097904 37 (2.14491e+011) class: Pos. norm. non-zero
; hwf : + 2524827632097904 37 (2.14491e+011) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001001010 #b0011011111000000000011001001010000110100111110100011)))
(assert (= r (fp #b0 #b10000100100 #b1000111110000101000100111110001000010101101001110000)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
