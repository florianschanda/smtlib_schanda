(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9764133152621468081377997805248014628887176513671875p620 {- 4397374642774195 620 (-8.59954e+186)}
; Y = 1.5661080954798978215336546782054938375949859619140625p669 {+ 2549524207854689 669 (3.83609e+201)}
; Z = 1.4470320648398267149303819678607396781444549560546875p-934 {+ 2013253440635307 -934 (9.96465e-282)}
; -1.9764133152621468081377997805248014628887176513671875p620 x 1.5661080954798978215336546782054938375949859619140625p669 1.4470320648398267149303819678607396781444549560546875p-934 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001101011 #b1111100111110110001110010001100001101110000010110011)))
(assert (= y (fp #b0 #b11010011100 #b1001000011101100011101011100110000010110010001100001)))
(assert (= z (fp #b0 #b00001011001 #b0111001001110000101100011000001011000000000110101011)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
