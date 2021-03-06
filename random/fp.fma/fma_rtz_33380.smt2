(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00100110 #b11010111010000000100011)))
;; x should be Float32(0x936BA023 [Rational(-15441955, 5192296858534827628530496329220096), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b10100110000001010010100)))
;; y should be Float32(0x00530294 [Rational(1360037, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x80000001)))
;; z should be Float32(0x80000001 [Rational(-1, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result (fp #b1 #b00000000 #b00000000000000000000001))))
(check-sat)
(exit)
