(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNE +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10100100 #b00101100011100010010001)))
;; x should be Float32(0x52163891 [Rational(161298530304), 161298530304.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNE x)))
;; y should be 161298530304

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000010010110001110001001000100000000000000))
;; z should be 161298530304

(assert (= y z))
(check-sat)
(exit)
