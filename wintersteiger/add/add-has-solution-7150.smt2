(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6798652809603511482094972961931489408016204833984375p-1018 {- 3061841025995175 -1018 (-5.98052e-307)}
; Y = 1.9004463131091042793485712536494247615337371826171875p-35 {+ 4055249680185299 -35 (5.53103e-011)}
; -1.6798652809603511482094972961931489408016204833984375p-1018 + 1.9004463131091042793485712536494247615337371826171875p-35 == 1.9004463131091042793485712536494247615337371826171875p-35
; [HW: 1.9004463131091042793485712536494247615337371826171875p-35] 

; mpf : + 4055249680185299 -35
; mpfd: + 4055249680185299 -35 (5.53103e-011) class: Pos. norm. non-zero
; hwf : + 4055249680185299 -35 (5.53103e-011) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000101 #b1010111000001011101001101010101101101001000110100111)))
(assert (= y (fp #b0 #b01111011100 #b1110011010000011101001100100101010011011011111010011)))
(assert (= r (fp #b0 #b01111011100 #b1110011010000011101001100100101010011011011111010011)))
(assert (= (fp.add roundNearestTiesToEven x y) r))
(check-sat)
(exit)
