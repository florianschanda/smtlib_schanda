(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNA -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b01101100001110001011100)))
;; x should be Float32(0xCAB61C5C [Rational(-5967406), -5967406.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be -5967406

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111101001001111000111010010))
;; z should be -5967406

(assert (not (= y z)))
(check-sat)
(exit)
