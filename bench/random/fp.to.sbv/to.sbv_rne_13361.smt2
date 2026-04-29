(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNE +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10111001110001101101000)))
;; x should be Float32(0x4ADCE368 [Rational(7238068), 7238068.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNE x)))
;; y should be 7238068

(declare-const z (_ BitVec 32))
(assert (= z #b00000000011011100111000110110100))
;; z should be 7238068

(assert (not (= y z)))
(check-sat)
(exit)
