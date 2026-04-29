(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b00101011101011000000110)))
;; x should be Float32(0x4A15D606 [Rational(4909827, 2), 2454913.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be 2454913

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000001001010111010110000001))
;; z should be 2454913

(assert (= y z))
(check-sat)
(exit)
