(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x50CA3F92)))
;; x should be Float32(0x50CA3F92 [Rational(27145310208), 27145310208.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be 27145310208

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000011001010001111111001001000000000000))
;; z should be 27145310208

(assert (= y z))
(check-sat)
(exit)
