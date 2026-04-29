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
(assert (= w ((_ to_fp 8 24) RTP (/ 17840595047655970154710118100738152556309561271.0 1517710072051350836655829614705874145814380343009484000977978445108518972816569139200.0))))
;; w should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
