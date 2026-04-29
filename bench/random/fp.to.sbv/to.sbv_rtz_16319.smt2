(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AD0F5D2)))
;; x should be Float32(0x4AD0F5D2 [Rational(6847209), 6847209.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be 6847209

(declare-const z (_ BitVec 32))
(assert (= z #b00000000011010000111101011101001))
;; z should be 6847209

(assert (= y z))
(check-sat)
(exit)
