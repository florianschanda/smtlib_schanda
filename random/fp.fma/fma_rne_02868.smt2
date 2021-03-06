(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x1700F63E)))
;; x should be Float32(0x1700F63E [Rational(4225823, 10141204801825835211973625643008), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x803C31DE)))
;; y should be Float32(0x803C31DE [Rational(-1972463, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x802B9BDC)))
;; z should be Float32(0x802B9BDC [Rational(-714487, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result ((_ to_fp 8 24) #x802B9BDC))))
(check-sat)
(exit)
