(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4625F5FB)))
;; x should be Float32(0x4625F5FB [Rational(10876411, 1024), 10621.495117])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTZ x)))
;; y should be 10621

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000000010100101111101))
;; z should be 10621

(assert (= y z))
(check-sat)
(exit)
