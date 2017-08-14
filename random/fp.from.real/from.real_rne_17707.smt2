(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80196323)))
;; x should be Float32(0x80196323 [Rational(-1663779, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 23746244211325120757677575754410542423840200344565917.0 10185179881672430431342228442046890805257341968329681253180702246771906498816683530916986880.0)))))
;; w should be Float32(0x80196323 [Rational(-1663779, 713623846352979940529142984724747568191373312), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
