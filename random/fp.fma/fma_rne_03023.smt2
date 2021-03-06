(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00432DD6)))
;; x should be Float32(0x00432DD6 [Rational(2201323, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b01110000 #b11100010101111001010111)))
;; y should be Float32(0x38715E57 [Rational(15818327, 274877906944), 0.000058])

(declare-const z Float32)
(assert (= z (fp #b0 #b10010101 #b11000011000111111110101)))
;; z should be Float32(0x4AE18FF5 [Rational(14782453, 2), 7391226.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result ((_ to_fp 8 24) #x4AE18FF5))))
(check-sat)
(exit)
