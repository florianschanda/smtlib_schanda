(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.94052590033527305735105983330868184566497802734375p37 {+ 4235752094282236 37 (2.66704e+011)}
; 1.94052590033527305735105983330868184566497802734375p37 S == 1.9700385277122236526992082872311584651470184326171875p18
; [HW: 1.9700385277122236526992082872311584651470184326171875p18] 

; mpf : + 4368665151939795 18
; mpfd: + 4368665151939795 18 (516434) class: Pos. norm. non-zero
; hwf : + 4368665151939795 18 (516434) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000100100 #b1111000011000110010011100010111011111011000111111100)))
(assert (= r (fp #b0 #b10000010001 #b1111100001010100011100011110100001100010010011010011)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
