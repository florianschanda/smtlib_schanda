(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary +normal)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x (fp #b0 #b00111000 #b10101100100010011000100)))
;; x should be Float32(0x1C5644C4 [Rational(3510577, 4951760157141521099596496896), 0.000000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b00011100010101100100010011000100

(assert (= y #b00011100010101100100010011000100))
(check-sat)
(exit)
