(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNA +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10011100 #b01011000011101011011110)))
;; x should be Float32(0x4E2C3ADE [Rational(722384768), 722384768.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNA x)))
;; y should be 722384768

(declare-const z (_ BitVec 32))
(assert (= z #b00101011000011101011011110000000))
;; z should be 722384768

(assert (not (= y z)))
(check-sat)
(exit)
