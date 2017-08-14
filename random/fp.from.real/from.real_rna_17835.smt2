(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00000001 #b00000000000000000000000)))
;; x should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 119726212155008920885255859784844630535985893777757091.0 10185179881672430431342228442046890805257341968329681253180702246771906498816683530916986880.0))))
;; w should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
