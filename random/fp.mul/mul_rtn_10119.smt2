(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010010 #b01011010101011101111000)))
;; x should be Float32(0xC92D5778 [Rational(-1420015, 2), -710007.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x4A8A8323)))
;; y should be Float32(0x4A8A8323 [Rational(9077539, 2), 4538769.500000])

(declare-const result Float32)
(assert (= result (fp.mul RTN x y)))
(assert (not (= result ((_ to_fp 8 24) #xD43B93E5))))
(check-sat)
(exit)
