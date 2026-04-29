(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary +normal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00011100010101100100010011000100))
;; x should be 1c5644c4

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x1C5644C4 [Rational(3510577, 4951760157141521099596496896), 0.000000])

(assert (= y (fp #b0 #b00111000 #b10101100100010011000100)))
(check-sat)
(exit)
