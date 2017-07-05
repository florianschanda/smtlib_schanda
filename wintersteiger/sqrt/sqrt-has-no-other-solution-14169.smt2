(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7963935318103818605806054620188660919666290283203125p888 {+ 3586637613101509 888 (3.70713e+267)}
; 1.7963935318103818605806054620188660919666290283203125p888 S == 1.340296061253028359061545415897853672504425048828125p444
; [HW: 1.340296061253028359061545415897853672504425048828125p444] 

; mpf : + 1532557214654786 444
; mpfd: + 1532557214654786 444 (6.08862e+133) class: Pos. norm. non-zero
; hwf : + 1532557214654786 444 (6.08862e+133) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101110111 #b1100101111100000011100100100110111011111000111000101)))
(assert (= r (fp #b0 #b10110111011 #b0101011100011101101001001000011000001010000101000010)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
