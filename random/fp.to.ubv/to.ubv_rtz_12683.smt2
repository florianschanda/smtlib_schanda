(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AD803EC)))
;; x should be Float32(0x4AD803EC [Rational(7078390), 7078390.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTZ x)))
;; y should be 7078390

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000011011000000000111110110))
;; z should be 7078390

(assert (= y z))
(check-sat)
(exit)
