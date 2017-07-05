(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9314360417014284632131193575332872569561004638671875p313 {+ 4194815010326003 313 (3.22306e+094)}
; Y = -1.4301823617453237602603621780872344970703125p-319 {- 1937369124057600 -319 (-1.33913e-096)}
; 1.9314360417014284632131193575332872569561004638671875p313 M -1.4301823617453237602603621780872344970703125p-319 == 1.9314360417014284632131193575332872569561004638671875p313
; [HW: 1.9314360417014284632131193575332872569561004638671875p313] 

; mpf : + 4194815010326003 313
; mpfd: + 4194815010326003 313 (3.22306e+094) class: Pos. norm. non-zero
; hwf : + 4194815010326003 313 (3.22306e+094) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100111000 #b1110111001110010100101111010100101101100010111110011)))
(assert (= y (fp #b1 #b01011000000 #b0110111000100000011011100110011100000011001000000000)))
(assert (= r (fp #b0 #b10100111000 #b1110111001110010100101111010100101101100010111110011)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
