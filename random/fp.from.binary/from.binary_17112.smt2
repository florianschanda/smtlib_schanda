(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary +subnormal)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01110010001111011110100)))
;; x should be Float32(0x00391EF4 [Rational(935869, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b00000000001110010001111011110100

(assert (= y #b00000000001110010001111011110100))
(check-sat)
(exit)
