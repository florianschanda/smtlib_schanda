(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.65195748080928073164841407560743391513824462890625p418 {+ 2936155467634084 418 (1.11825e+126)}
; Y = -1.9879515517396304513653149115270934998989105224609375p274 {- 4449338240274703 274 (-6.03427e+082)}
; 1.65195748080928073164841407560743391513824462890625p418 = -1.9879515517396304513653149115270934998989105224609375p274 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110100001 #b1010011011100110101011110111101001110101010110100100)))
(assert (= y (fp #b1 #b10100010001 #b1111110011101010011001001001010011000001000100001111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
