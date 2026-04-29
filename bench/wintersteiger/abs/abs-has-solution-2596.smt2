(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.498306491216262248400425960426218807697296142578125p-843 {+ 2244172928157858 -843 (2.55455e-254)}
; 1.498306491216262248400425960426218807697296142578125p-843 | == 1.498306491216262248400425960426218807697296142578125p-843
; [HW: 1.498306491216262248400425960426218807697296142578125p-843] 

; mpf : + 2244172928157858 -843
; mpfd: + 2244172928157858 -843 (2.55455e-254) class: Pos. norm. non-zero
; hwf : + 2244172928157858 -843 (2.55455e-254) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010110100 #b0111111110010001000000111010001100101000100010100010)))
(assert (= r (fp #b0 #b00010110100 #b0111111110010001000000111010001100101000100010100010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
