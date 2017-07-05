(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9556691396421925777104888766189105808734893798828125p-675 {+ 4303951181182061 -675 (1.24752e-203)}
; Y = -1.56891202402100748969360211049206554889678955078125p-849 {- 2562151979387604 -849 (-4.17958e-256)}
; 1.9556691396421925777104888766189105808734893798828125p-675 + -1.56891202402100748969360211049206554889678955078125p-849 == 1.95566913964219235566588395158760249614715576171875p-675
; [HW: 1.95566913964219235566588395158760249614715576171875p-675] 

; mpf : + 4303951181182060 -675
; mpfd: + 4303951181182060 -675 (1.24752e-203) class: Pos. norm. non-zero
; hwf : + 4303951181182060 -675 (1.24752e-203) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101011100 #b1111010010100110101110111001010010001111010001101101)))
(assert (= y (fp #b1 #b00010101110 #b1001000110100100001101111110100101111000101011010100)))
(assert (= r (fp #b0 #b00101011100 #b1111010010100110101110111001010010001111010001101100)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)
