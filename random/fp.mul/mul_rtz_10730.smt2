(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0006ABDE)))
;; x should be Float32(0x0006ABDE [Rational(218607, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b11111111 #b01011100000010011000011)))
;; y should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.mul RTZ x y)))
(assert (not (= result ((_ to_fp 8 24) #xFFFFFFFF))))
(check-sat)
(exit)
