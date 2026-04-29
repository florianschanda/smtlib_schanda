(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6083001958579752344036251088255085051059722900390625p-612 {- 2739540535395377 -612 (-9.46258e-185)}
; Y = -1.062279240352453246742925330181606113910675048828125p-572 {- 280480763644226 -572 (-6.87197e-173)}
; -1.6083001958579752344036251088255085051059722900390625p-612 > -1.062279240352453246742925330181606113910675048828125p-572 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110011011 #b1001101110111001100011111100011101011100010000110001)))
(assert (= y (fp #b1 #b00111000011 #b0000111111110001100010000100010010001000100101000010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
