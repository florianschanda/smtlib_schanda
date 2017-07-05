(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.562880725881762966622545718564651906490325927734375p-711 {+ 2534989427335142 -711 (1.45077e-214)}
; Y = -oo {- 0 1024 (-1.#INF)}
; Z = -1.2574968612073316176491744045051746070384979248046875p-584 {- 1159662768182411 -584 (-1.98605e-176)}
; 1.562880725881762966622545718564651906490325927734375p-711 x -oo -1.2574968612073316176491744045051746070384979248046875p-584 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100111000 #b1001000000011000111100111000010100110101111111100110)))
(assert (= y (_ -oo 11 53)))
(assert (= z (fp #b1 #b00110110111 #b0100000111101011010100000111010110110101010010001011)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
