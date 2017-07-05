(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6384095691471907141334440893842838704586029052734375p-247 {- 2875141097721047 -247 (-7.24459e-075)}
; -1.6384095691471907141334440893842838704586029052734375p-247 | == 1.6384095691471907141334440893842838704586029052734375p-247
; [HW: 1.6384095691471907141334440893842838704586029052734375p-247] 

; mpf : + 2875141097721047 -247
; mpfd: + 2875141097721047 -247 (7.24459e-075) class: Pos. norm. non-zero
; hwf : + 2875141097721047 -247 (7.24459e-075) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100001000 #b1010001101101110110011110011110011110000110011010111)))
(assert (= r (fp #b0 #b01100001000 #b1010001101101110110011110011110011110000110011010111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
