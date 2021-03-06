(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x5ECDF5CA)))
;; x should be Float32(0x5ECDF5CA [Rational(7420495124209074176), 7420495124209074176.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x0047F964)))
;; y should be Float32(0x0047F964 [Rational(1179225, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x003FA6DA)))
;; z should be Float32(0x003FA6DA [Rational(2085741, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result (fp #b0 #b00111110 #b11001111001111100111110))))
(check-sat)
(exit)
