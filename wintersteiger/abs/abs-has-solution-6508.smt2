(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9437469835231533377140067386790178716182708740234375p990 {- 4250258563326903 990 (-2.03393e+298)}
; -1.9437469835231533377140067386790178716182708740234375p990 | == 1.9437469835231533377140067386790178716182708740234375p990
; [HW: 1.9437469835231533377140067386790178716182708740234375p990] 

; mpf : + 4250258563326903 990
; mpfd: + 4250258563326903 990 (2.03393e+298) class: Pos. norm. non-zero
; hwf : + 4250258563326903 990 (2.03393e+298) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111011101 #b1111000110011001011001101111110111101110001110110111)))
(assert (= r (fp #b0 #b11111011101 #b1111000110011001011001101111110111101110001110110111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
