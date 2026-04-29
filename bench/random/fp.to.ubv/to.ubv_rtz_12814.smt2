(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4625F3FB)))
;; x should be Float32(0x4625F3FB [Rational(10875899, 1024), 10620.995117])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTZ x)))
;; y should be 10620

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000000010100101111100))
;; z should be 10620

(assert (= y z))
(check-sat)
(exit)
