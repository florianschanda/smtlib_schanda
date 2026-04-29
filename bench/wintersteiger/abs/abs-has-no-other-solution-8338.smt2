(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.86392951347606672385381898493506014347076416015625p-623 {- 3890792634965188 -623 (-5.35479e-188)}
; -1.86392951347606672385381898493506014347076416015625p-623 | == 1.86392951347606672385381898493506014347076416015625p-623
; [HW: 1.86392951347606672385381898493506014347076416015625p-623] 

; mpf : + 3890792634965188 -623
; mpfd: + 3890792634965188 -623 (5.35479e-188) class: Pos. norm. non-zero
; hwf : + 3890792634965188 -623 (5.35479e-188) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110010000 #b1101110100101010011111000000111001101101110011000100)))
(assert (= r (fp #b0 #b00110010000 #b1101110100101010011111000000111001101101110011000100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
