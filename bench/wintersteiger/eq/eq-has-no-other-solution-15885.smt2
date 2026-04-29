(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.374767431848649135162077072891406714916229248046875p-216 {- 1687802466424174 -216 (-1.30542e-065)}
; Y = 1.4265243022756213253643409188953228294849395751953125p905 {+ 1920894688792949 905 (3.85856e+272)}
; -1.374767431848649135162077072891406714916229248046875p-216 = 1.4265243022756213253643409188953228294849395751953125p905 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100100111 #b0101111111110000110000100010011101100101010101101110)))
(assert (= y (fp #b0 #b11110001000 #b0110110100110000101100100101100100111001000101110101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
