(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.750357314433772959461066420772112905979156494140625p773 {+ 3379308921678666 773 (8.69588e+232)}
; 1.750357314433772959461066420772112905979156494140625p773 S == 1.8710196762374107226634123435360379517078399658203125p386
; [HW: 1.8710196762374107226634123435360379517078399658203125p386] 

; mpf : + 3922723889335173 386
; mpfd: + 3922723889335173 386 (2.94888e+116) class: Pos. norm. non-zero
; hwf : + 3922723889335173 386 (2.94888e+116) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100000100 #b1100000000010111011010101011110111001110101101001010)))
(assert (= r (fp #b0 #b10110000001 #b1101111011111011001001010011111110011100101110000101)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
