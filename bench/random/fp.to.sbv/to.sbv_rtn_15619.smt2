(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A3A3692)))
;; x should be Float32(0x4A3A3692 [Rational(6101833, 2), 3050916.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be 3050916

(declare-const z (_ BitVec 32))
(assert (= z #b00000000001011101000110110100100))
;; z should be 3050916

(assert (= y z))
(check-sat)
(exit)
