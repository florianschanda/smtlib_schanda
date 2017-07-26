(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTN +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b00011000101101111101000)))
;; x should be Float32(0x4A0C5BE8 [Rational(2299642), 2299642.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be 2299642

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000001000110001011011111010))
;; z should be 2299642

(assert (not (= y z)))
(check-sat)
(exit)
