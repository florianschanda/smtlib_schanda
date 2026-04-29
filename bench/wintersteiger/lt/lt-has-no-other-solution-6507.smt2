(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9527809851478690195136778129381127655506134033203125p1003 {- 4290944089677637 1003 (-1.67394e+302)}
; Y = -1.777782604323355553077590229804627597332000732421875p-216 {- 3502821447005918 -216 (-1.68811e-065)}
; -1.9527809851478690195136778129381127655506134033203125p1003 < -1.777782604323355553077590229804627597332000732421875p-216 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111101010 #b1111001111101001011101000110001101110101111101000101)))
(assert (= y (fp #b1 #b01100100111 #b1100011100011100110000101100000011110111011011011110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
