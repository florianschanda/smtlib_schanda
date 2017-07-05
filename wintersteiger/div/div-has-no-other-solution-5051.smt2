(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9586235381024257318216541534638963639736175537109375p-711 {- 4317256608986671 -711 (-1.81813e-214)}
; Y = -1.74028531075769965497102020890451967716217041015625p864 {- 3333948649676228 864 (-2.14061e+260)}
; -1.9586235381024257318216541534638963639736175537109375p-711 / -1.74028531075769965497102020890451967716217041015625p864 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100111000 #b1111010101101000010110100010100101010011011000101111)))
(assert (= y (fp #b1 #b11101011111 #b1011110110000011010101101000111101101001110111000100)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
