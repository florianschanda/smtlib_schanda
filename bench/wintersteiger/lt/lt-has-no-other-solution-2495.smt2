(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.29265968677874365511115684057585895061492919921875p458 {+ 1318022056323116 458 (9.62104e+137)}
; Y = 1.1440111092576523699193558059050701558589935302734375p-206 {+ 648568377989975 -206 (1.11237e-062)}
; 1.29265968677874365511115684057585895061492919921875p458 < 1.1440111092576523699193558059050701558589935302734375p-206 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111001001 #b0100101011101011101111101100011110010010100000101100)))
(assert (= y (fp #b0 #b01100110001 #b0010010011011101111010010111110010000101101101010111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
