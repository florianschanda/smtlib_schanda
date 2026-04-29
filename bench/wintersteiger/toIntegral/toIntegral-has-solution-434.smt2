(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.27589583358190861162029250408522784709930419921875 137 {+ 1242524373312556 137 (2.22292e+041)}
; 1.27589583358190861162029250408522784709930419921875 137 I == 1.27589583358190861162029250408522784709930419921875 137
; [HW: 1.27589583358190861162029250408522784709930419921875 137] 

; mpf : + 1242524373312556 137
; mpfd: + 1242524373312556 137 (2.22292e+041) class: Pos. norm. non-zero
; hwf : + 1242524373312556 137 (2.22292e+041) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010001000 #b0100011010100001000110111111111001010110010000101100)))
(assert (= r (fp #b0 #b10010001000 #b0100011010100001000110111111111001010110010000101100)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
