(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1453291533771838839328438552911393344402313232421875p-2 {+ 654504320995555 -2 (0.286332)}
; Y = -1.497624164286813108759588430984877049922943115234375p474 {- 2241100000852646 474 (-7.30501e+142)}
; Z = -oo {- 0 1024 (-1.#INF)}
; 1.1453291533771838839328438552911393344402313232421875p-2 x -1.497624164286813108759588430984877049922943115234375p474 -oo == -oo
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
(assert (= x (fp #b0 #b01111111101 #b0010010100110100010010101001100011101001000011100011)))
(assert (= y (fp #b1 #b10111011001 #b0111111101100100010011000001011101001111101010100110)))
(assert (= z (_ -oo 11 53)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
