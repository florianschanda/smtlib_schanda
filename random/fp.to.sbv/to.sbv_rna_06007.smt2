(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNA +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01110010101110110011010)))
;; x should be Float32(0x4AB95D9A [Rational(6074061), 6074061.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNA x)))
;; y should be 6074061

(declare-const z (_ BitVec 32))
(assert (= z #b00000000010111001010111011001101))
;; z should be 6074061

(assert (not (= y z)))
(check-sat)
(exit)
