(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6432010538249850473135893480503000319004058837890625p-12 {- 2896720026330513 -12 (-0.000401172)}
; Y = -1.0920733236180601988252192313666455447673797607421875p937 {- 414661385937059 937 (-1.2687e+282)}
; -1.6432010538249850473135893480503000319004058837890625p-12 < -1.0920733236180601988252192313666455447673797607421875p937 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111110011 #b1010010010101000110100110000001011101110010110010001)))
(assert (= y (fp #b1 #b11110101000 #b0001011110010010000111100000100111000110000010100011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
