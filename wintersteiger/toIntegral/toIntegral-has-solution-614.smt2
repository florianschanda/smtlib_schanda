(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.901980007404926009684231758001260459423065185546875 231 {+ 4062156825244462 231 (6.56349e+069)}
; 1.901980007404926009684231758001260459423065185546875 231 I == 1.901980007404926009684231758001260459423065185546875 231
; [HW: 1.901980007404926009684231758001260459423065185546875 231] 

; mpf : + 4062156825244462 231
; mpfd: + 4062156825244462 231 (6.56349e+069) class: Pos. norm. non-zero
; hwf : + 4062156825244462 231 (6.56349e+069) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011100110 #b1110011011101000001010010110100101110011001100101110)))
(assert (= r (fp #b0 #b10011100110 #b1110011011101000001010010110100101110011001100101110)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
