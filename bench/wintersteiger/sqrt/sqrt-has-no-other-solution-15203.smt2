(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.73991600637158594366837860434316098690032958984375p524 {+ 3332285450580540 524 (9.55534e+157)}
; 1.73991600637158594366837860434316098690032958984375p524 S == 1.3190587577403769525830057318671606481075286865234375p262
; [HW: 1.3190587577403769525830057318671606481075286865234375p262] 

; mpf : + 1436912902468855 262
; mpfd: + 1436912902468855 262 (9.77514e+078) class: Pos. norm. non-zero
; hwf : + 1436912902468855 262 (9.77514e+078) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000001011 #b1011110101101011001000101010100100100111001000111100)))
(assert (= r (fp #b0 #b10100000101 #b0101000110101101110101011011000111111111010011110111)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
