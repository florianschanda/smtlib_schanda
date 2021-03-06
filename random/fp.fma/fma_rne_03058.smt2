(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x006F681C)))
;; x should be Float32(0x006F681C [Rational(1825287, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b01100000001011111011110)))
;; y should be Float32(0x003017DE [Rational(1575919, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x8039B3EA)))
;; z should be Float32(0x8039B3EA [Rational(-1890805, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result (fp #b1 #b00000000 #b01110011011001111101010))))
(check-sat)
(exit)
