(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4987891978201250964275459409691393375396728515625p869 {+ 2246346845439144 869 (5.89939e+261)}
; 1.4987891978201250964275459409691393375396728515625p869 S == 1.7313516094774772380304739272105507552623748779296875p434
; [HW: 1.7313516094774772380304739272105507552623748779296875p434] 

; mpf : + 3293714835919579 434
; mpfd: + 3293714835919579 434 (7.68075e+130) class: Pos. norm. non-zero
; hwf : + 3293714835919579 434 (7.68075e+130) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101100100 #b0111111110110000101001100001110000111100010010101000)))
(assert (= r (fp #b0 #b10110110001 #b1011101100111001110110111110110010010101001011011011)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
