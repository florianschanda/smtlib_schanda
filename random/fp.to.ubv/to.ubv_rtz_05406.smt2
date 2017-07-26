(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10100100 #b01101110010101010011110)))
;; x should be Float32(0x52372A9E [Rational(196673503232), 196673503232.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTZ x)))
;; y should be 196673503232

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000010110111001010101001111000000000000000))
;; z should be 196673503232

(assert (= y z))
(check-sat)
(exit)
