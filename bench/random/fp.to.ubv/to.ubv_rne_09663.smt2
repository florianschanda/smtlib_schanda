(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNE +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b01111000111101000011000)))
;; x should be Float32(0x4A3C7A18 [Rational(3088006), 3088006.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNE x)))
;; y should be 3088006

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000001011110001111010000110))
;; z should be 3088006

(assert (not (= y z)))
(check-sat)
(exit)
