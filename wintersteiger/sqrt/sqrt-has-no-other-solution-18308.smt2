(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4287255201204960286531786550767719745635986328125p814 {+ 1930808092658888 814 (1.56086e+245)}
; 1.4287255201204960286531786550767719745635986328125p814 S == 1.1952930687159930567275978319230489432811737060546875p407
; [HW: 1.1952930687159930567275978319230489432811737060546875p407] 

; mpf : + 879521791497387 407
; mpfd: + 879521791497387 407 (3.95078e+122) class: Pos. norm. non-zero
; hwf : + 879521791497387 407 (3.95078e+122) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100101101 #b0110110111000000111101001010011111100000110011001000)))
(assert (= r (fp #b0 #b10110010110 #b0011000111111110101110011111111101000101010010101011)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
