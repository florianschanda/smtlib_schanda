(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.45829660317319831364102356019429862499237060546875p718 {+ 2063984411275980 718 (2.01086e+216)}
; Y = -1.35855292600255328494540663086809217929840087890625p-907 {- 1614778823937700 -907 (-1.25566e-273)}
; 1.45829660317319831364102356019429862499237060546875p718 / -1.35855292600255328494540663086809217929840087890625p-907 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011001101 #b0111010101010010111011010001101001111111001011001100)))
(assert (= y (fp #b1 #b00001110100 #b0101101111001010000111111110001100010000111010100100)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
