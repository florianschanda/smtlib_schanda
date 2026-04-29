(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4ABE2A4A)))
;; x should be Float32(0x4ABE2A4A [Rational(6231333), 6231333.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTZ x)))
;; y should be 6231333

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000010111110001010100100101))
;; z should be 6231333

(assert (= y z))
(check-sat)
(exit)
